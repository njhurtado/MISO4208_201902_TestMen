.class Lcom/squareup/timessquare/MonthCellDescriptor;
.super Ljava/lang/Object;
.source "MonthCellDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;
    }
.end annotation


# instance fields
.field private final date:Ljava/util/Date;

.field private final isCurrentMonth:Z

.field private isHighlighted:Z

.field private final isSelectable:Z

.field private isSelected:Z

.field private final isToday:Z

.field private rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

.field private final value:I


# direct methods
.method constructor <init>(Ljava/util/Date;ZZZZZILcom/squareup/timessquare/MonthCellDescriptor$RangeState;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "currentMonth"    # Z
    .param p3, "selectable"    # Z
    .param p4, "selected"    # Z
    .param p5, "today"    # Z
    .param p6, "highlighted"    # Z
    .param p7, "value"    # I
    .param p8, "rangeState"    # Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->date:Ljava/util/Date;

    .line 25
    iput-boolean p2, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isCurrentMonth:Z

    .line 26
    iput-boolean p3, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelectable:Z

    .line 27
    iput-boolean p6, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isHighlighted:Z

    .line 28
    iput-boolean p4, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelected:Z

    .line 29
    iput-boolean p5, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isToday:Z

    .line 30
    iput p7, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->value:I

    .line 31
    iput-object p8, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    .line 32
    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getRangeState()Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->value:I

    return v0
.end method

.method public isCurrentMonth()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isCurrentMonth:Z

    return v0
.end method

.method isHighlighted()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isHighlighted:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelectable:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelected:Z

    return v0
.end method

.method public isToday()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isToday:Z

    return v0
.end method

.method setHighlighted(Z)V
    .locals 0
    .param p1, "highlighted"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isHighlighted:Z

    .line 60
    return-void
.end method

.method public setRangeState(Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;)V
    .locals 0
    .param p1, "rangeState"    # Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    .line 72
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelected:Z

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MonthCellDescriptor{date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCurrentMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isCurrentMonth:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isToday="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isToday:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSelectable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelectable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isHighlighted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->isHighlighted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rangeState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/timessquare/MonthCellDescriptor;->rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
