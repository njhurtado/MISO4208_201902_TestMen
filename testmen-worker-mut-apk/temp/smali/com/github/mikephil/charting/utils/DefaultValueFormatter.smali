.class public Lcom/github/mikephil/charting/utils/DefaultValueFormatter;
.super Ljava/lang/Object;
.source "DefaultValueFormatter.java"

# interfaces
.implements Lcom/github/mikephil/charting/utils/ValueFormatter;


# instance fields
.field private mFormat:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(I)V
    .locals 5
    .param p1, "digits"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 26
    .local v0, "b":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 27
    if-nez v1, :cond_0

    .line 28
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    :cond_0
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_1
    new-instance v2, Ljava/text/DecimalFormat;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "###,###,###,##0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/github/mikephil/charting/utils/DefaultValueFormatter;->mFormat:Ljava/text/DecimalFormat;

    .line 33
    return-void
.end method


# virtual methods
.method public getFormattedValue(F)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # F

    .prologue
    .line 38
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/DefaultValueFormatter;->mFormat:Ljava/text/DecimalFormat;

    float-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
