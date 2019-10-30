.class public Lcom/squareup/timessquare/MonthView;
.super Landroid/widget/LinearLayout;
.source "MonthView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/timessquare/MonthView$Listener;
    }
.end annotation


# instance fields
.field private decorators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/timessquare/CalendarCellDecorator;",
            ">;"
        }
    .end annotation
.end field

.field grid:Lcom/squareup/timessquare/CalendarGridView;

.field private isRtl:Z

.field private listener:Lcom/squareup/timessquare/MonthView$Listener;

.field private locale:Ljava/util/Locale;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public static create(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Ljava/text/DateFormat;Lcom/squareup/timessquare/MonthView$Listener;Ljava/util/Calendar;IIIIZILjava/util/List;Ljava/util/Locale;Lcom/squareup/timessquare/DayViewAdapter;)Lcom/squareup/timessquare/MonthView;
    .locals 9
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "weekdayNameFormat"    # Ljava/text/DateFormat;
    .param p3, "listener"    # Lcom/squareup/timessquare/MonthView$Listener;
    .param p4, "today"    # Ljava/util/Calendar;
    .param p5, "dividerColor"    # I
    .param p6, "dayBackgroundResId"    # I
    .param p7, "dayTextColorResId"    # I
    .param p8, "titleTextColor"    # I
    .param p9, "displayHeader"    # Z
    .param p10, "headerTextColor"    # I
    .param p12, "locale"    # Ljava/util/Locale;
    .param p13, "adapter"    # Lcom/squareup/timessquare/DayViewAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/LayoutInflater;",
            "Ljava/text/DateFormat;",
            "Lcom/squareup/timessquare/MonthView$Listener;",
            "Ljava/util/Calendar;",
            "IIIIZI",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/timessquare/CalendarCellDecorator;",
            ">;",
            "Ljava/util/Locale;",
            "Lcom/squareup/timessquare/DayViewAdapter;",
            ")",
            "Lcom/squareup/timessquare/MonthView;"
        }
    .end annotation

    .prologue
    .line 39
    .local p11, "decorators":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/timessquare/CalendarCellDecorator;>;"
    sget v7, Lcom/squareup/timessquare/R$layout;->month:I

    const/4 v8, 0x0

    invoke-virtual {p1, v7, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/squareup/timessquare/MonthView;

    .line 40
    .local v6, "view":Lcom/squareup/timessquare/MonthView;
    move-object/from16 v0, p13

    invoke-virtual {v6, v0}, Lcom/squareup/timessquare/MonthView;->setDayViewAdapter(Lcom/squareup/timessquare/DayViewAdapter;)V

    .line 41
    invoke-virtual {v6, p5}, Lcom/squareup/timessquare/MonthView;->setDividerColor(I)V

    .line 42
    move/from16 v0, p7

    invoke-virtual {v6, v0}, Lcom/squareup/timessquare/MonthView;->setDayTextColor(I)V

    .line 43
    move/from16 v0, p8

    invoke-virtual {v6, v0}, Lcom/squareup/timessquare/MonthView;->setTitleTextColor(I)V

    .line 44
    move/from16 v0, p9

    invoke-virtual {v6, v0}, Lcom/squareup/timessquare/MonthView;->setDisplayHeader(Z)V

    .line 45
    move/from16 v0, p10

    invoke-virtual {v6, v0}, Lcom/squareup/timessquare/MonthView;->setHeaderTextColor(I)V

    .line 47
    if-eqz p6, :cond_0

    .line 48
    invoke-virtual {v6, p6}, Lcom/squareup/timessquare/MonthView;->setDayBackground(I)V

    .line 51
    :cond_0
    const/4 v7, 0x7

    invoke-virtual {p4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 53
    .local v4, "originalDayOfWeek":I
    invoke-static/range {p12 .. p12}, Lcom/squareup/timessquare/MonthView;->isRtl(Ljava/util/Locale;)Z

    move-result v7

    iput-boolean v7, v6, Lcom/squareup/timessquare/MonthView;->isRtl:Z

    .line 54
    move-object/from16 v0, p12

    iput-object v0, v6, Lcom/squareup/timessquare/MonthView;->locale:Ljava/util/Locale;

    .line 55
    invoke-virtual {p4}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    .line 56
    .local v1, "firstDayOfWeek":I
    iget-object v7, v6, Lcom/squareup/timessquare/MonthView;->grid:Lcom/squareup/timessquare/CalendarGridView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/squareup/timessquare/CalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/squareup/timessquare/CalendarRowView;

    .line 57
    .local v2, "headerRow":Lcom/squareup/timessquare/CalendarRowView;
    const/4 v3, 0x0

    .local v3, "offset":I
    :goto_0
    const/4 v7, 0x7

    if-ge v3, v7, :cond_1

    .line 58
    const/4 v7, 0x7

    iget-boolean v8, v6, Lcom/squareup/timessquare/MonthView;->isRtl:Z

    invoke-static {v1, v3, v8}, Lcom/squareup/timessquare/MonthView;->getDayOfWeek(IIZ)I

    move-result v8

    invoke-virtual {p4, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 59
    invoke-virtual {v2, v3}, Lcom/squareup/timessquare/CalendarRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 60
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {p4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    .end local v5    # "textView":Landroid/widget/TextView;
    :cond_1
    const/4 v7, 0x7

    invoke-virtual {p4, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 63
    iput-object p3, v6, Lcom/squareup/timessquare/MonthView;->listener:Lcom/squareup/timessquare/MonthView$Listener;

    .line 64
    move-object/from16 v0, p11

    iput-object v0, v6, Lcom/squareup/timessquare/MonthView;->decorators:Ljava/util/List;

    .line 65
    return-object v6
.end method

.method public static create(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Ljava/text/DateFormat;Lcom/squareup/timessquare/MonthView$Listener;Ljava/util/Calendar;IIIIZILjava/util/Locale;Lcom/squareup/timessquare/DayViewAdapter;)Lcom/squareup/timessquare/MonthView;
    .locals 14
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "weekdayNameFormat"    # Ljava/text/DateFormat;
    .param p3, "listener"    # Lcom/squareup/timessquare/MonthView$Listener;
    .param p4, "today"    # Ljava/util/Calendar;
    .param p5, "dividerColor"    # I
    .param p6, "dayBackgroundResId"    # I
    .param p7, "dayTextColorResId"    # I
    .param p8, "titleTextColor"    # I
    .param p9, "displayHeader"    # Z
    .param p10, "headerTextColor"    # I
    .param p11, "locale"    # Ljava/util/Locale;
    .param p12, "adapter"    # Lcom/squareup/timessquare/DayViewAdapter;

    .prologue
    .line 29
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-static/range {v0 .. v13}, Lcom/squareup/timessquare/MonthView;->create(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Ljava/text/DateFormat;Lcom/squareup/timessquare/MonthView$Listener;Ljava/util/Calendar;IIIIZILjava/util/List;Ljava/util/Locale;Lcom/squareup/timessquare/DayViewAdapter;)Lcom/squareup/timessquare/MonthView;

    move-result-object v0

    return-object v0
.end method

.method private static getDayOfWeek(IIZ)I
    .locals 1
    .param p0, "firstDayOfWeek"    # I
    .param p1, "offset"    # I
    .param p2, "isRtl"    # Z

    .prologue
    .line 69
    add-int v0, p0, p1

    .line 70
    .local v0, "dayOfWeek":I
    if-eqz p2, :cond_0

    .line 71
    rsub-int/lit8 v0, v0, 0x8

    .line 73
    .end local v0    # "dayOfWeek":I
    :cond_0
    return v0
.end method

.method private static isRtl(Ljava/util/Locale;)Z
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    .line 79
    .local v0, "directionality":I
    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method


# virtual methods
.method public getDecorators()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/timessquare/CalendarCellDecorator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/squareup/timessquare/MonthView;->decorators:Ljava/util/List;

    return-object v0
.end method

.method public init(Lcom/squareup/timessquare/MonthDescriptor;Ljava/util/List;ZLandroid/graphics/Typeface;Landroid/graphics/Typeface;)V
    .locals 20
    .param p1, "month"    # Lcom/squareup/timessquare/MonthDescriptor;
    .param p3, "displayOnly"    # Z
    .param p4, "titleTypeface"    # Landroid/graphics/Typeface;
    .param p5, "dateTypeface"    # Landroid/graphics/Typeface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/timessquare/MonthDescriptor;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/timessquare/MonthCellDescriptor;",
            ">;>;Z",
            "Landroid/graphics/Typeface;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    .local p2, "cells":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/squareup/timessquare/MonthCellDescriptor;>;>;"
    const-string v14, "Initializing MonthView (%d) for %s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object p1, v15, v16

    invoke-static {v14, v15}, Lcom/squareup/timessquare/Logr;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 105
    .local v10, "start":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/timessquare/MonthView;->title:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/squareup/timessquare/MonthDescriptor;->getLabel()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/timessquare/MonthView;->locale:Ljava/util/Locale;

    invoke-static {v14}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v9

    .line 108
    .local v9, "numberFormatter":Ljava/text/NumberFormat;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    .line 109
    .local v8, "numRows":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/timessquare/MonthView;->grid:Lcom/squareup/timessquare/CalendarGridView;

    invoke-virtual {v14, v8}, Lcom/squareup/timessquare/CalendarGridView;->setNumRows(I)V

    .line 110
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v14, 0x6

    if-ge v7, v14, :cond_6

    .line 111
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/timessquare/MonthView;->grid:Lcom/squareup/timessquare/CalendarGridView;

    add-int/lit8 v15, v7, 0x1

    invoke-virtual {v14, v15}, Lcom/squareup/timessquare/CalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/squareup/timessquare/CalendarRowView;

    .line 112
    .local v13, "weekRow":Lcom/squareup/timessquare/CalendarRowView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/timessquare/MonthView;->listener:Lcom/squareup/timessquare/MonthView$Listener;

    invoke-virtual {v13, v14}, Lcom/squareup/timessquare/CalendarRowView;->setListener(Lcom/squareup/timessquare/MonthView$Listener;)V

    .line 113
    if-ge v7, v8, :cond_4

    .line 114
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/squareup/timessquare/CalendarRowView;->setVisibility(I)V

    .line 115
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 116
    .local v12, "week":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/timessquare/MonthCellDescriptor;>;"
    const/4 v2, 0x0

    .local v2, "c":I
    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v2, v14, :cond_5

    .line 117
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/squareup/timessquare/MonthView;->isRtl:Z

    if-eqz v14, :cond_1

    rsub-int/lit8 v14, v2, 0x6

    :goto_2
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/timessquare/MonthCellDescriptor;

    .line 118
    .local v3, "cell":Lcom/squareup/timessquare/MonthCellDescriptor;
    invoke-virtual {v13, v2}, Lcom/squareup/timessquare/CalendarRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/squareup/timessquare/CalendarCellView;

    .line 120
    .local v5, "cellView":Lcom/squareup/timessquare/CalendarCellView;
    invoke-virtual {v3}, Lcom/squareup/timessquare/MonthCellDescriptor;->getValue()I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v9, v14, v15}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "cellDate":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/squareup/timessquare/CalendarCellView;->getDayOfMonthTextView()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 122
    invoke-virtual {v5}, Lcom/squareup/timessquare/CalendarCellView;->getDayOfMonthTextView()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_0
    invoke-virtual {v3}, Lcom/squareup/timessquare/MonthCellDescriptor;->isCurrentMonth()Z

    move-result v14

    invoke-virtual {v5, v14}, Lcom/squareup/timessquare/CalendarCellView;->setEnabled(Z)V

    .line 125
    if-nez p3, :cond_2

    const/4 v14, 0x1

    :goto_3
    invoke-virtual {v5, v14}, Lcom/squareup/timessquare/CalendarCellView;->setClickable(Z)V

    .line 127
    invoke-virtual {v3}, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelectable()Z

    move-result v14

    invoke-virtual {v5, v14}, Lcom/squareup/timessquare/CalendarCellView;->setSelectable(Z)V

    .line 128
    invoke-virtual {v3}, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelected()Z

    move-result v14

    invoke-virtual {v5, v14}, Lcom/squareup/timessquare/CalendarCellView;->setSelected(Z)V

    .line 129
    invoke-virtual {v3}, Lcom/squareup/timessquare/MonthCellDescriptor;->isCurrentMonth()Z

    move-result v14

    invoke-virtual {v5, v14}, Lcom/squareup/timessquare/CalendarCellView;->setCurrentMonth(Z)V

    .line 130
    invoke-virtual {v3}, Lcom/squareup/timessquare/MonthCellDescriptor;->isToday()Z

    move-result v14

    invoke-virtual {v5, v14}, Lcom/squareup/timessquare/CalendarCellView;->setToday(Z)V

    .line 131
    invoke-virtual {v3}, Lcom/squareup/timessquare/MonthCellDescriptor;->getRangeState()Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/squareup/timessquare/CalendarCellView;->setRangeState(Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;)V

    .line 132
    invoke-virtual {v3}, Lcom/squareup/timessquare/MonthCellDescriptor;->isHighlighted()Z

    move-result v14

    invoke-virtual {v5, v14}, Lcom/squareup/timessquare/CalendarCellView;->setHighlighted(Z)V

    .line 133
    invoke-virtual {v5, v3}, Lcom/squareup/timessquare/CalendarCellView;->setTag(Ljava/lang/Object;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/timessquare/MonthView;->decorators:Ljava/util/List;

    if-eqz v14, :cond_3

    .line 136
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/timessquare/MonthView;->decorators:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/timessquare/CalendarCellDecorator;

    .line 137
    .local v6, "decorator":Lcom/squareup/timessquare/CalendarCellDecorator;
    invoke-virtual {v3}, Lcom/squareup/timessquare/MonthCellDescriptor;->getDate()Ljava/util/Date;

    move-result-object v15

    invoke-interface {v6, v5, v15}, Lcom/squareup/timessquare/CalendarCellDecorator;->decorate(Lcom/squareup/timessquare/CalendarCellView;Ljava/util/Date;)V

    goto :goto_4

    .end local v3    # "cell":Lcom/squareup/timessquare/MonthCellDescriptor;
    .end local v4    # "cellDate":Ljava/lang/String;
    .end local v5    # "cellView":Lcom/squareup/timessquare/CalendarCellView;
    .end local v6    # "decorator":Lcom/squareup/timessquare/CalendarCellDecorator;
    :cond_1
    move v14, v2

    .line 117
    goto/16 :goto_2

    .line 125
    .restart local v3    # "cell":Lcom/squareup/timessquare/MonthCellDescriptor;
    .restart local v4    # "cellDate":Ljava/lang/String;
    .restart local v5    # "cellView":Lcom/squareup/timessquare/CalendarCellView;
    :cond_2
    const/4 v14, 0x0

    goto :goto_3

    .line 116
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 142
    .end local v2    # "c":I
    .end local v3    # "cell":Lcom/squareup/timessquare/MonthCellDescriptor;
    .end local v4    # "cellDate":Ljava/lang/String;
    .end local v5    # "cellView":Lcom/squareup/timessquare/CalendarCellView;
    .end local v12    # "week":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/timessquare/MonthCellDescriptor;>;"
    :cond_4
    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/squareup/timessquare/CalendarRowView;->setVisibility(I)V

    .line 110
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 146
    .end local v13    # "weekRow":Lcom/squareup/timessquare/CalendarRowView;
    :cond_6
    if-eqz p4, :cond_7

    .line 147
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/timessquare/MonthView;->title:Landroid/widget/TextView;

    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 149
    :cond_7
    if-eqz p5, :cond_8

    .line 150
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/timessquare/MonthView;->grid:Lcom/squareup/timessquare/CalendarGridView;

    move-object/from16 v0, p5

    invoke-virtual {v14, v0}, Lcom/squareup/timessquare/CalendarGridView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 153
    :cond_8
    const-string v14, "MonthView.init took %d ms"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v10

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/squareup/timessquare/Logr;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 97
    sget v0, Lcom/squareup/timessquare/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/squareup/timessquare/MonthView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/squareup/timessquare/MonthView;->title:Landroid/widget/TextView;

    .line 98
    sget v0, Lcom/squareup/timessquare/R$id;->calendar_grid:I

    invoke-virtual {p0, v0}, Lcom/squareup/timessquare/MonthView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/squareup/timessquare/CalendarGridView;

    iput-object v0, p0, Lcom/squareup/timessquare/MonthView;->grid:Lcom/squareup/timessquare/CalendarGridView;

    .line 99
    return-void
.end method

.method public setDayBackground(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/squareup/timessquare/MonthView;->grid:Lcom/squareup/timessquare/CalendarGridView;

    invoke-virtual {v0, p1}, Lcom/squareup/timessquare/CalendarGridView;->setDayBackground(I)V

    .line 162
    return-void
.end method

.method public setDayTextColor(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/squareup/timessquare/MonthView;->grid:Lcom/squareup/timessquare/CalendarGridView;

    invoke-virtual {v0, p1}, Lcom/squareup/timessquare/CalendarGridView;->setDayTextColor(I)V

    .line 166
    return-void
.end method

.method public setDayViewAdapter(Lcom/squareup/timessquare/DayViewAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/squareup/timessquare/DayViewAdapter;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/squareup/timessquare/MonthView;->grid:Lcom/squareup/timessquare/CalendarGridView;

    invoke-virtual {v0, p1}, Lcom/squareup/timessquare/CalendarGridView;->setDayViewAdapter(Lcom/squareup/timessquare/DayViewAdapter;)V

    .line 170
    return-void
.end method

.method public setDecorators(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/timessquare/CalendarCellDecorator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "decorators":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/timessquare/CalendarCellDecorator;>;"
    iput-object p1, p0, Lcom/squareup/timessquare/MonthView;->decorators:Ljava/util/List;

    .line 89
    return-void
.end method

.method public setDisplayHeader(Z)V
    .locals 1
    .param p1, "displayHeader"    # Z

    .prologue
    .line 177
    iget-object v0, p0, Lcom/squareup/timessquare/MonthView;->grid:Lcom/squareup/timessquare/CalendarGridView;

    invoke-virtual {v0, p1}, Lcom/squareup/timessquare/CalendarGridView;->setDisplayHeader(Z)V

    .line 178
    return-void
.end method

.method public setDividerColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/squareup/timessquare/MonthView;->grid:Lcom/squareup/timessquare/CalendarGridView;

    invoke-virtual {v0, p1}, Lcom/squareup/timessquare/CalendarGridView;->setDividerColor(I)V

    .line 158
    return-void
.end method

.method public setHeaderTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lcom/squareup/timessquare/MonthView;->grid:Lcom/squareup/timessquare/CalendarGridView;

    invoke-virtual {v0, p1}, Lcom/squareup/timessquare/CalendarGridView;->setHeaderTextColor(I)V

    .line 182
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/squareup/timessquare/MonthView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    return-void
.end method
