.class public Lcom/squareup/timessquare/CalendarCellView;
.super Landroid/widget/FrameLayout;
.source "CalendarCellView.java"


# static fields
.field private static final STATE_CURRENT_MONTH:[I

.field private static final STATE_HIGHLIGHTED:[I

.field private static final STATE_RANGE_FIRST:[I

.field private static final STATE_RANGE_LAST:[I

.field private static final STATE_RANGE_MIDDLE:[I

.field private static final STATE_SELECTABLE:[I

.field private static final STATE_TODAY:[I


# instance fields
.field private dayOfMonthTextView:Landroid/widget/TextView;

.field private isCurrentMonth:Z

.field private isHighlighted:Z

.field private isSelectable:Z

.field private isToday:Z

.field private rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-array v0, v3, [I

    sget v1, Lcom/squareup/timessquare/R$attr;->tsquare_state_selectable:I

    aput v1, v0, v2

    sput-object v0, Lcom/squareup/timessquare/CalendarCellView;->STATE_SELECTABLE:[I

    .line 15
    new-array v0, v3, [I

    sget v1, Lcom/squareup/timessquare/R$attr;->tsquare_state_current_month:I

    aput v1, v0, v2

    sput-object v0, Lcom/squareup/timessquare/CalendarCellView;->STATE_CURRENT_MONTH:[I

    .line 18
    new-array v0, v3, [I

    sget v1, Lcom/squareup/timessquare/R$attr;->tsquare_state_today:I

    aput v1, v0, v2

    sput-object v0, Lcom/squareup/timessquare/CalendarCellView;->STATE_TODAY:[I

    .line 21
    new-array v0, v3, [I

    sget v1, Lcom/squareup/timessquare/R$attr;->tsquare_state_highlighted:I

    aput v1, v0, v2

    sput-object v0, Lcom/squareup/timessquare/CalendarCellView;->STATE_HIGHLIGHTED:[I

    .line 24
    new-array v0, v3, [I

    sget v1, Lcom/squareup/timessquare/R$attr;->tsquare_state_range_first:I

    aput v1, v0, v2

    sput-object v0, Lcom/squareup/timessquare/CalendarCellView;->STATE_RANGE_FIRST:[I

    .line 27
    new-array v0, v3, [I

    sget v1, Lcom/squareup/timessquare/R$attr;->tsquare_state_range_middle:I

    aput v1, v0, v2

    sput-object v0, Lcom/squareup/timessquare/CalendarCellView;->STATE_RANGE_MIDDLE:[I

    .line 30
    new-array v0, v3, [I

    sget v1, Lcom/squareup/timessquare/R$attr;->tsquare_state_range_last:I

    aput v1, v0, v2

    sput-object v0, Lcom/squareup/timessquare/CalendarCellView;->STATE_RANGE_LAST:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-boolean v0, p0, Lcom/squareup/timessquare/CalendarCellView;->isSelectable:Z

    .line 35
    iput-boolean v0, p0, Lcom/squareup/timessquare/CalendarCellView;->isCurrentMonth:Z

    .line 36
    iput-boolean v0, p0, Lcom/squareup/timessquare/CalendarCellView;->isToday:Z

    .line 37
    iput-boolean v0, p0, Lcom/squareup/timessquare/CalendarCellView;->isHighlighted:Z

    .line 38
    sget-object v0, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->NONE:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    iput-object v0, p0, Lcom/squareup/timessquare/CalendarCellView;->rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    .line 44
    return-void
.end method


# virtual methods
.method public getDayOfMonthTextView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarCellView;->dayOfMonthTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You have to setDayOfMonthTextView in your custom DayViewAdapter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarCellView;->dayOfMonthTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public isCurrentMonth()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/squareup/timessquare/CalendarCellView;->isCurrentMonth:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/squareup/timessquare/CalendarCellView;->isSelectable:Z

    return v0
.end method

.method public isToday()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/squareup/timessquare/CalendarCellView;->isToday:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 94
    add-int/lit8 v1, p1, 0x5

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 96
    .local v0, "drawableState":[I
    iget-boolean v1, p0, Lcom/squareup/timessquare/CalendarCellView;->isSelectable:Z

    if-eqz v1, :cond_0

    .line 97
    sget-object v1, Lcom/squareup/timessquare/CalendarCellView;->STATE_SELECTABLE:[I

    invoke-static {v0, v1}, Lcom/squareup/timessquare/CalendarCellView;->mergeDrawableStates([I[I)[I

    .line 100
    :cond_0
    iget-boolean v1, p0, Lcom/squareup/timessquare/CalendarCellView;->isCurrentMonth:Z

    if-eqz v1, :cond_1

    .line 101
    sget-object v1, Lcom/squareup/timessquare/CalendarCellView;->STATE_CURRENT_MONTH:[I

    invoke-static {v0, v1}, Lcom/squareup/timessquare/CalendarCellView;->mergeDrawableStates([I[I)[I

    .line 104
    :cond_1
    iget-boolean v1, p0, Lcom/squareup/timessquare/CalendarCellView;->isToday:Z

    if-eqz v1, :cond_2

    .line 105
    sget-object v1, Lcom/squareup/timessquare/CalendarCellView;->STATE_TODAY:[I

    invoke-static {v0, v1}, Lcom/squareup/timessquare/CalendarCellView;->mergeDrawableStates([I[I)[I

    .line 108
    :cond_2
    iget-boolean v1, p0, Lcom/squareup/timessquare/CalendarCellView;->isHighlighted:Z

    if-eqz v1, :cond_3

    .line 109
    sget-object v1, Lcom/squareup/timessquare/CalendarCellView;->STATE_HIGHLIGHTED:[I

    invoke-static {v0, v1}, Lcom/squareup/timessquare/CalendarCellView;->mergeDrawableStates([I[I)[I

    .line 112
    :cond_3
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarCellView;->rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    sget-object v2, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->FIRST:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    if-ne v1, v2, :cond_5

    .line 113
    sget-object v1, Lcom/squareup/timessquare/CalendarCellView;->STATE_RANGE_FIRST:[I

    invoke-static {v0, v1}, Lcom/squareup/timessquare/CalendarCellView;->mergeDrawableStates([I[I)[I

    .line 120
    :cond_4
    :goto_0
    return-object v0

    .line 114
    :cond_5
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarCellView;->rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    sget-object v2, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->MIDDLE:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    if-ne v1, v2, :cond_6

    .line 115
    sget-object v1, Lcom/squareup/timessquare/CalendarCellView;->STATE_RANGE_MIDDLE:[I

    invoke-static {v0, v1}, Lcom/squareup/timessquare/CalendarCellView;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 116
    :cond_6
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarCellView;->rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    sget-object v2, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->LAST:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    if-ne v1, v2, :cond_4

    .line 117
    sget-object v1, Lcom/squareup/timessquare/CalendarCellView;->STATE_RANGE_LAST:[I

    invoke-static {v0, v1}, Lcom/squareup/timessquare/CalendarCellView;->mergeDrawableStates([I[I)[I

    goto :goto_0
.end method

.method public setCurrentMonth(Z)V
    .locals 1
    .param p1, "isCurrentMonth"    # Z

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/squareup/timessquare/CalendarCellView;->isCurrentMonth:Z

    if-eq v0, p1, :cond_0

    .line 55
    iput-boolean p1, p0, Lcom/squareup/timessquare/CalendarCellView;->isCurrentMonth:Z

    .line 56
    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarCellView;->refreshDrawableState()V

    .line 58
    :cond_0
    return-void
.end method

.method public setDayOfMonthTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarCellView;->dayOfMonthTextView:Landroid/widget/TextView;

    .line 125
    return-void
.end method

.method public setHighlighted(Z)V
    .locals 1
    .param p1, "isHighlighted"    # Z

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/squareup/timessquare/CalendarCellView;->isHighlighted:Z

    if-eq v0, p1, :cond_0

    .line 76
    iput-boolean p1, p0, Lcom/squareup/timessquare/CalendarCellView;->isHighlighted:Z

    .line 77
    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarCellView;->refreshDrawableState()V

    .line 79
    :cond_0
    return-void
.end method

.method public setRangeState(Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;)V
    .locals 1
    .param p1, "rangeState"    # Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarCellView;->rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    if-eq v0, p1, :cond_0

    .line 69
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarCellView;->rangeState:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    .line 70
    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarCellView;->refreshDrawableState()V

    .line 72
    :cond_0
    return-void
.end method

.method public setSelectable(Z)V
    .locals 1
    .param p1, "isSelectable"    # Z

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/squareup/timessquare/CalendarCellView;->isSelectable:Z

    if-eq v0, p1, :cond_0

    .line 48
    iput-boolean p1, p0, Lcom/squareup/timessquare/CalendarCellView;->isSelectable:Z

    .line 49
    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarCellView;->refreshDrawableState()V

    .line 51
    :cond_0
    return-void
.end method

.method public setToday(Z)V
    .locals 1
    .param p1, "isToday"    # Z

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/squareup/timessquare/CalendarCellView;->isToday:Z

    if-eq v0, p1, :cond_0

    .line 62
    iput-boolean p1, p0, Lcom/squareup/timessquare/CalendarCellView;->isToday:Z

    .line 63
    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarCellView;->refreshDrawableState()V

    .line 65
    :cond_0
    return-void
.end method
