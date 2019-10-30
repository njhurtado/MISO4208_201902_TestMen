.class Lcom/squareup/timessquare/MonthDescriptor;
.super Ljava/lang/Object;
.source "MonthDescriptor.java"


# instance fields
.field private final date:Ljava/util/Date;

.field private label:Ljava/lang/String;

.field private final month:I

.field private final year:I


# direct methods
.method public constructor <init>(IILjava/util/Date;Ljava/lang/String;)V
    .locals 0
    .param p1, "month"    # I
    .param p2, "year"    # I
    .param p3, "date"    # Ljava/util/Date;
    .param p4, "label"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/squareup/timessquare/MonthDescriptor;->month:I

    .line 14
    iput p2, p0, Lcom/squareup/timessquare/MonthDescriptor;->year:I

    .line 15
    iput-object p3, p0, Lcom/squareup/timessquare/MonthDescriptor;->date:Ljava/util/Date;

    .line 16
    iput-object p4, p0, Lcom/squareup/timessquare/MonthDescriptor;->label:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/squareup/timessquare/MonthDescriptor;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/squareup/timessquare/MonthDescriptor;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/squareup/timessquare/MonthDescriptor;->month:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/squareup/timessquare/MonthDescriptor;->year:I

    return v0
.end method

.method setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/squareup/timessquare/MonthDescriptor;->label:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MonthDescriptor{label=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/timessquare/MonthDescriptor;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/squareup/timessquare/MonthDescriptor;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/squareup/timessquare/MonthDescriptor;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
