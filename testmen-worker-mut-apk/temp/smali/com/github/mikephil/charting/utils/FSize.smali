.class public final Lcom/github/mikephil/charting/utils/FSize;
.super Ljava/lang/Object;
.source "FSize.java"


# instance fields
.field public final height:F

.field public final width:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    .line 16
    iput p2, p0, Lcom/github/mikephil/charting/utils/FSize;->height:F

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 22
    if-nez p1, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v2

    .line 25
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    .line 26
    goto :goto_0

    .line 28
    :cond_2
    instance-of v3, p1, Lcom/github/mikephil/charting/utils/FSize;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 29
    check-cast v0, Lcom/github/mikephil/charting/utils/FSize;

    .line 30
    .local v0, "other":Lcom/github/mikephil/charting/utils/FSize;
    iget v3, p0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    iget v4, v0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/github/mikephil/charting/utils/FSize;->height:F

    iget v4, v0, Lcom/github/mikephil/charting/utils/FSize;->height:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Lcom/github/mikephil/charting/utils/FSize;->height:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/github/mikephil/charting/utils/FSize;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
