.class public Lcom/codetroopers/betterpickers/calendardatepicker/SimpleMonthView;
.super Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;
.source "SimpleMonthView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method


# virtual methods
.method public drawMonthDay(Landroid/graphics/Canvas;IIIIIIIIIZ)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "startX"    # I
    .param p8, "stopX"    # I
    .param p9, "startY"    # I
    .param p10, "stopY"    # I
    .param p11, "isEnabled"    # Z

    .prologue
    .line 35
    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/SimpleMonthView;->mSelectedDay:I

    if-ne v0, p4, :cond_0

    .line 36
    int-to-float v0, p5

    sget v1, Lcom/codetroopers/betterpickers/calendardatepicker/SimpleMonthView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    div-int/lit8 v1, v1, 0x3

    sub-int v1, p6, v1

    int-to-float v1, v1

    sget v2, Lcom/codetroopers/betterpickers/calendardatepicker/SimpleMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/SimpleMonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 40
    :cond_0
    iget-boolean v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/SimpleMonthView;->mHasToday:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/SimpleMonthView;->mToday:I

    if-ne v0, p4, :cond_1

    .line 41
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/SimpleMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/SimpleMonthView;->mTodayNumberColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    :goto_0
    const-string v0, "%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    int-to-float v1, p5

    int-to-float v2, p6

    iget-object v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/SimpleMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 48
    return-void

    .line 42
    :cond_1
    if-eqz p11, :cond_2

    .line 43
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/SimpleMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/SimpleMonthView;->mDayTextColorEnabled:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/SimpleMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/SimpleMonthView;->mDayTextColorDisabled:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method
