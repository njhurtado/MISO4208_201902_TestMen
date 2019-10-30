.class public Lcom/squareup/timessquare/CalendarRowView;
.super Landroid/view/ViewGroup;
.source "CalendarRowView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private isHeaderRow:Z

.field private listener:Lcom/squareup/timessquare/MonthView$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 26
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 28
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarRowView;->listener:Lcom/squareup/timessquare/MonthView$Listener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarRowView;->listener:Lcom/squareup/timessquare/MonthView$Listener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/timessquare/MonthCellDescriptor;

    invoke-interface {v1, v0}, Lcom/squareup/timessquare/MonthView$Listener;->handleClick(Lcom/squareup/timessquare/MonthCellDescriptor;)V

    .line 76
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 56
    .local v6, "start":J
    sub-int v1, p5, p3

    .line 57
    .local v1, "cellHeight":I
    sub-int v8, p4, p2

    .line 58
    .local v8, "width":I
    const/4 v0, 0x0

    .local v0, "c":I
    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarRowView;->getChildCount()I

    move-result v4

    .local v4, "numChildren":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 59
    invoke-virtual {p0, v0}, Lcom/squareup/timessquare/CalendarRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 60
    .local v2, "child":Landroid/view/View;
    add-int/lit8 v9, v0, 0x0

    mul-int/2addr v9, v8

    div-int/lit8 v3, v9, 0x7

    .line 61
    .local v3, "l":I
    add-int/lit8 v9, v0, 0x1

    mul-int/2addr v9, v8

    div-int/lit8 v5, v9, 0x7

    .line 62
    .local v5, "r":I
    const/4 v9, 0x0

    invoke-virtual {v2, v3, v9, v5, v1}, Landroid/view/View;->layout(IIII)V

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "l":I
    .end local v5    # "r":I
    :cond_0
    const-string v9, "Row.onLayout %d ms"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/squareup/timessquare/Logr;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 32
    .local v12, "start":J
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 33
    .local v14, "totalWidth":I
    const/4 v11, 0x0

    .line 34
    .local v11, "rowHeight":I
    const/4 v2, 0x0

    .local v2, "c":I
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/timessquare/CalendarRowView;->getChildCount()I

    move-result v9

    .local v9, "numChildren":I
    :goto_0
    if-ge v2, v9, :cond_2

    .line 35
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/squareup/timessquare/CalendarRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 37
    .local v6, "child":Landroid/view/View;
    add-int/lit8 v16, v2, 0x0

    mul-int v16, v16, v14

    div-int/lit8 v8, v16, 0x7

    .line 38
    .local v8, "l":I
    add-int/lit8 v16, v2, 0x1

    mul-int v16, v16, v14

    div-int/lit8 v10, v16, 0x7

    .line 39
    .local v10, "r":I
    sub-int v4, v10, v8

    .line 40
    .local v4, "cellSize":I
    const/high16 v16, 0x40000000    # 2.0f

    move/from16 v0, v16

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 41
    .local v5, "cellWidthSpec":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/squareup/timessquare/CalendarRowView;->isHeaderRow:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    const/high16 v16, -0x80000000

    move/from16 v0, v16

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 42
    .local v3, "cellHeightSpec":I
    :goto_1
    invoke-virtual {v6, v5, v3}, Landroid/view/View;->measure(II)V

    .line 44
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    move/from16 v0, v16

    if-le v0, v11, :cond_0

    .line 45
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 34
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "cellHeightSpec":I
    :cond_1
    move v3, v5

    .line 41
    goto :goto_1

    .line 48
    .end local v4    # "cellSize":I
    .end local v5    # "cellWidthSpec":I
    .end local v6    # "child":Landroid/view/View;
    .end local v8    # "l":I
    .end local v10    # "r":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/timessquare/CalendarRowView;->getPaddingLeft()I

    move-result v16

    add-int v16, v16, v14

    invoke-virtual/range {p0 .. p0}, Lcom/squareup/timessquare/CalendarRowView;->getPaddingRight()I

    move-result v17

    add-int v15, v16, v17

    .line 49
    .local v15, "widthWithPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/timessquare/CalendarRowView;->getPaddingTop()I

    move-result v16

    add-int v16, v16, v11

    invoke-virtual/range {p0 .. p0}, Lcom/squareup/timessquare/CalendarRowView;->getPaddingBottom()I

    move-result v17

    add-int v7, v16, v17

    .line 50
    .local v7, "heightWithPadding":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v7}, Lcom/squareup/timessquare/CalendarRowView;->setMeasuredDimension(II)V

    .line 51
    const-string v16, "Row.onMeasure %d ms"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v12

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/squareup/timessquare/Logr;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public setCellBackground(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarRowView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 94
    invoke-virtual {p0, v0}, Lcom/squareup/timessquare/CalendarRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method

.method public setCellTextColor(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarRowView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 100
    invoke-virtual {p0, v0}, Lcom/squareup/timessquare/CalendarRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/squareup/timessquare/CalendarCellView;

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {p0, v0}, Lcom/squareup/timessquare/CalendarRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/squareup/timessquare/CalendarCellView;

    invoke-virtual {v1}, Lcom/squareup/timessquare/CalendarCellView;->getDayOfMonthTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0, v0}, Lcom/squareup/timessquare/CalendarRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 106
    :cond_1
    return-void
.end method

.method public setCellTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarRowView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 110
    invoke-virtual {p0, v0}, Lcom/squareup/timessquare/CalendarRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/squareup/timessquare/CalendarCellView;

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p0, v0}, Lcom/squareup/timessquare/CalendarRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/squareup/timessquare/CalendarCellView;

    invoke-virtual {v1}, Lcom/squareup/timessquare/CalendarCellView;->getDayOfMonthTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 109
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0, v0}, Lcom/squareup/timessquare/CalendarRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 116
    :cond_1
    return-void
.end method

.method public setDayViewAdapter(Lcom/squareup/timessquare/DayViewAdapter;)V
    .locals 3
    .param p1, "adapter"    # Lcom/squareup/timessquare/DayViewAdapter;

    .prologue
    .line 83
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarRowView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 84
    invoke-virtual {p0, v1}, Lcom/squareup/timessquare/CalendarRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/squareup/timessquare/CalendarCellView;

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {p0, v1}, Lcom/squareup/timessquare/CalendarRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/squareup/timessquare/CalendarCellView;

    .line 86
    .local v0, "cell":Lcom/squareup/timessquare/CalendarCellView;
    invoke-virtual {v0}, Lcom/squareup/timessquare/CalendarCellView;->removeAllViews()V

    .line 87
    invoke-interface {p1, v0}, Lcom/squareup/timessquare/DayViewAdapter;->makeCellView(Lcom/squareup/timessquare/CalendarCellView;)V

    .line 83
    .end local v0    # "cell":Lcom/squareup/timessquare/CalendarCellView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_1
    return-void
.end method

.method public setIsHeaderRow(Z)V
    .locals 0
    .param p1, "isHeaderRow"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/squareup/timessquare/CalendarRowView;->isHeaderRow:Z

    .line 69
    return-void
.end method

.method public setListener(Lcom/squareup/timessquare/MonthView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/squareup/timessquare/MonthView$Listener;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarRowView;->listener:Lcom/squareup/timessquare/MonthView$Listener;

    .line 80
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 2
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarRowView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 120
    invoke-virtual {p0, v0}, Lcom/squareup/timessquare/CalendarRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/squareup/timessquare/CalendarCellView;

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {p0, v0}, Lcom/squareup/timessquare/CalendarRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/squareup/timessquare/CalendarCellView;

    invoke-virtual {v1}, Lcom/squareup/timessquare/CalendarCellView;->getDayOfMonthTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 119
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0, v0}, Lcom/squareup/timessquare/CalendarRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 126
    :cond_1
    return-void
.end method
