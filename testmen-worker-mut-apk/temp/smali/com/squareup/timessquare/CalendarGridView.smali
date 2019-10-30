.class public Lcom/squareup/timessquare/CalendarGridView;
.super Landroid/view/ViewGroup;
.source "CalendarGridView.java"


# static fields
.field private static final FLOAT_FUDGE:F = 0.5f


# instance fields
.field private final dividerPaint:Landroid/graphics/Paint;

.field private oldNumRows:I

.field private oldWidthMeasureSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/squareup/timessquare/CalendarGridView;->dividerPaint:Landroid/graphics/Paint;

    .line 34
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarGridView;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/squareup/timessquare/R$color;->calendar_divider:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarGridView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    .line 76
    check-cast v0, Lcom/squareup/timessquare/CalendarRowView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/squareup/timessquare/CalendarRowView;->setIsHeaderRow(Z)V

    .line 78
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 79
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v11, 0x3f000000    # 0.5f

    .line 82
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/squareup/timessquare/CalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 84
    .local v9, "row":Landroid/view/ViewGroup;
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getTop()I

    move-result v10

    .line 85
    .local v10, "top":I
    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarGridView;->getBottom()I

    move-result v6

    .line 87
    .local v6, "bottom":I
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarGridView;->getLeft()I

    move-result v2

    add-int v8, v0, v2

    .line 88
    .local v8, "left":I
    int-to-float v0, v8

    add-float v1, v0, v11

    int-to-float v2, v10

    int-to-float v0, v8

    add-float v3, v0, v11

    int-to-float v4, v6

    iget-object v5, p0, Lcom/squareup/timessquare/CalendarGridView;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 91
    const/4 v7, 0x0

    .local v7, "c":I
    :goto_0
    const/4 v0, 0x7

    if-ge v7, v0, :cond_0

    .line 92
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v0, v0

    sub-float v1, v0, v11

    .line 93
    .local v1, "x":F
    int-to-float v2, v10

    int-to-float v4, v6

    iget-object v5, p0, Lcom/squareup/timessquare/CalendarGridView;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 91
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "x":F
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    .line 100
    .local v7, "retVal":Z
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .line 101
    .local v6, "bottom":I
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    int-to-float v2, v6

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcom/squareup/timessquare/CalendarGridView;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 102
    return v7
.end method

.method protected onLayout(ZIIII)V
    .locals 16
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 140
    .local v8, "start":J
    const/16 p3, 0x0

    .line 141
    const/4 v4, 0x0

    .local v4, "c":I
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/timessquare/CalendarGridView;->getChildCount()I

    move-result v6

    .local v6, "numChildren":I
    :goto_0
    if-ge v4, v6, :cond_0

    .line 142
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/squareup/timessquare/CalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 143
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 144
    .local v7, "rowHeight":I
    add-int v10, p3, v7

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v5, v0, v1, v2, v10}, Landroid/view/View;->layout(IIII)V

    .line 145
    add-int p3, p3, v7

    .line 141
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 147
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "rowHeight":I
    :cond_0
    const-string v10, "Grid.onLayout %d ms"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/squareup/timessquare/Logr;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 106
    const-string v13, "Grid.onMeasure w=%s h=%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 107
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 106
    invoke-static {v13, v14}, Lcom/squareup/timessquare/Logr;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 109
    .local v12, "widthMeasureSize":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/squareup/timessquare/CalendarGridView;->oldWidthMeasureSize:I

    if-ne v13, v12, :cond_0

    .line 110
    const-string v13, "SKIP Grid.onMeasure"

    invoke-static {v13}, Lcom/squareup/timessquare/Logr;->d(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/timessquare/CalendarGridView;->getMeasuredWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/squareup/timessquare/CalendarGridView;->getMeasuredHeight()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/squareup/timessquare/CalendarGridView;->setMeasuredDimension(II)V

    .line 136
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 115
    .local v10, "start":J
    move-object/from16 v0, p0

    iput v12, v0, Lcom/squareup/timessquare/CalendarGridView;->oldWidthMeasureSize:I

    .line 116
    div-int/lit8 v3, v12, 0x7

    .line 118
    .local v3, "cellSize":I
    mul-int/lit8 v12, v3, 0x7

    .line 119
    const/4 v9, 0x0

    .line 120
    .local v9, "totalHeight":I
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 121
    .local v8, "rowWidthSpec":I
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 122
    .local v7, "rowHeightSpec":I
    const/4 v2, 0x0

    .local v2, "c":I
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/timessquare/CalendarGridView;->getChildCount()I

    move-result v6

    .local v6, "numChildren":I
    :goto_1
    if-ge v2, v6, :cond_3

    .line 123
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/squareup/timessquare/CalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 124
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_1

    .line 125
    if-nez v2, :cond_2

    .line 126
    const/high16 v13, -0x80000000

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v13}, Lcom/squareup/timessquare/CalendarGridView;->measureChild(Landroid/view/View;II)V

    .line 130
    :goto_2
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v9, v13

    .line 122
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 128
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v7}, Lcom/squareup/timessquare/CalendarGridView;->measureChild(Landroid/view/View;II)V

    goto :goto_2

    .line 133
    .end local v4    # "child":Landroid/view/View;
    :cond_3
    add-int/lit8 v5, v12, 0x2

    .line 134
    .local v5, "measuredWidth":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lcom/squareup/timessquare/CalendarGridView;->setMeasuredDimension(II)V

    .line 135
    const-string v13, "Grid.onMeasure %d ms"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/squareup/timessquare/Logr;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setDayBackground(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 48
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarGridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 49
    invoke-virtual {p0, v0}, Lcom/squareup/timessquare/CalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/squareup/timessquare/CalendarRowView;

    invoke-virtual {v1, p1}, Lcom/squareup/timessquare/CalendarRowView;->setCellBackground(I)V

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method public setDayTextColor(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 54
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarGridView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 56
    .local v0, "colors":Landroid/content/res/ColorStateList;
    invoke-virtual {p0, v1}, Lcom/squareup/timessquare/CalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/squareup/timessquare/CalendarRowView;

    invoke-virtual {v2, v0}, Lcom/squareup/timessquare/CalendarRowView;->setCellTextColor(Landroid/content/res/ColorStateList;)V

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "colors":Landroid/content/res/ColorStateList;
    :cond_0
    return-void
.end method

.method public setDayViewAdapter(Lcom/squareup/timessquare/DayViewAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/squareup/timessquare/DayViewAdapter;

    .prologue
    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarGridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 43
    invoke-virtual {p0, v0}, Lcom/squareup/timessquare/CalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/squareup/timessquare/CalendarRowView;

    invoke-virtual {v1, p1}, Lcom/squareup/timessquare/CalendarRowView;->setDayViewAdapter(Lcom/squareup/timessquare/DayViewAdapter;)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method public setDisplayHeader(Z)V
    .locals 2
    .param p1, "displayHeader"    # Z

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Lcom/squareup/timessquare/CalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 62
    return-void

    .line 61
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setDividerColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarGridView;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    return-void
.end method

.method public setHeaderTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/squareup/timessquare/CalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/squareup/timessquare/CalendarRowView;

    invoke-virtual {v0, p1}, Lcom/squareup/timessquare/CalendarRowView;->setCellTextColor(I)V

    .line 66
    return-void
.end method

.method public setNumRows(I)V
    .locals 1
    .param p1, "numRows"    # I

    .prologue
    .line 151
    iget v0, p0, Lcom/squareup/timessquare/CalendarGridView;->oldNumRows:I

    if-eq v0, p1, :cond_0

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/timessquare/CalendarGridView;->oldWidthMeasureSize:I

    .line 155
    :cond_0
    iput p1, p0, Lcom/squareup/timessquare/CalendarGridView;->oldNumRows:I

    .line 156
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 2
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarGridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 70
    invoke-virtual {p0, v0}, Lcom/squareup/timessquare/CalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/squareup/timessquare/CalendarRowView;

    invoke-virtual {v1, p1}, Lcom/squareup/timessquare/CalendarRowView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method
