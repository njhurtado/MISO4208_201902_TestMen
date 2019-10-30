.class public abstract Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;
.super Landroid/widget/ListView;
.source "DayPickerView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;
    }
.end annotation


# static fields
.field public static final DAYS_PER_WEEK:I = 0x7

.field protected static final GOTO_SCROLL_DURATION:I = 0xfa

.field public static final LIST_TOP_OFFSET:I = -0x1

.field protected static final SCROLL_CHANGE_DELAY:I = 0x28

.field protected static final SCROLL_HYST_WEEKS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MonthFragment"

.field private static final YEAR_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field protected mAdapter:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;

.field protected mContext:Landroid/content/Context;

.field private mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

.field protected mCurrentMonthDisplayed:I

.field protected mCurrentScrollState:I

.field protected mDaysPerWeek:I

.field protected mFirstDayOfWeek:I

.field protected mFriction:F

.field protected mHandler:Landroid/os/Handler;

.field protected mNumWeeks:I

.field private mPerformingScroll:Z

.field protected mPrevMonthName:Ljava/lang/CharSequence;

.field protected mPreviousScrollPosition:J

.field protected mPreviousScrollState:I

.field protected mScrollStateChangedRunnable:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;

.field protected mSelectedDay:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

.field protected mShowWeekNumber:Z

.field protected mTempDay:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const/4 v0, 0x6

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mNumWeeks:I

    .line 63
    iput-boolean v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mShowWeekNumber:Z

    .line 64
    const/4 v0, 0x7

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mDaysPerWeek:I

    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mFriction:F

    .line 74
    new-instance v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    invoke-direct {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mSelectedDay:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    .line 77
    new-instance v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    invoke-direct {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mTempDay:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    .line 88
    iput v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mPreviousScrollState:I

    .line 90
    iput v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mCurrentScrollState:I

    .line 280
    new-instance v0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;

    invoke-direct {v0, p0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;-><init>(Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;)V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mScrollStateChangedRunnable:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;

    .line 97
    invoke-virtual {p0, p1}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->init(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x6

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mNumWeeks:I

    .line 63
    iput-boolean v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mShowWeekNumber:Z

    .line 64
    const/4 v0, 0x7

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mDaysPerWeek:I

    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mFriction:F

    .line 74
    new-instance v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    invoke-direct {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mSelectedDay:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    .line 77
    new-instance v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    invoke-direct {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mTempDay:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    .line 88
    iput v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mPreviousScrollState:I

    .line 90
    iput v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mCurrentScrollState:I

    .line 280
    new-instance v0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;

    invoke-direct {v0, p0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;-><init>(Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;)V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mScrollStateChangedRunnable:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;

    .line 102
    invoke-virtual {p0, p1}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->init(Landroid/content/Context;)V

    .line 103
    invoke-virtual {p0, p2}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->setController(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;)V

    .line 104
    return-void
.end method

.method private findAccessibilityFocus()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;
    .locals 6

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->getChildCount()I

    move-result v1

    .line 383
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 384
    invoke-virtual {p0, v3}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 385
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    if-eqz v4, :cond_1

    move-object v4, v0

    .line 386
    check-cast v4, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->getAccessibilityFocus()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v2

    .line 387
    .local v2, "focus":Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;
    if-eqz v2, :cond_1

    .line 388
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ne v4, v5, :cond_0

    .line 390
    check-cast v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->clearAccessibilityFocus()V

    .line 397
    .end local v2    # "focus":Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;
    :cond_0
    :goto_1
    return-object v2

    .line 383
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 397
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getMonthAndYearString(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)Ljava/lang/String;
    .locals 6
    .param p1, "day"    # Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    .prologue
    const/4 v5, 0x2

    .line 442
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 443
    .local v0, "cal":Ljava/util/Calendar;
    iget v2, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    iget v3, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    iget v4, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->day:I

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 445
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 446
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v5, v5, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 447
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    sget-object v2, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 449
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private restoreAccessibilityFocus(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)Z
    .locals 5
    .param p1, "day"    # Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    .prologue
    const/4 v3, 0x0

    .line 407
    if-nez p1, :cond_1

    .line 421
    :cond_0
    :goto_0
    return v3

    .line 411
    :cond_1
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->getChildCount()I

    move-result v1

    .line 412
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 413
    invoke-virtual {p0, v2}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 414
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    if-eqz v4, :cond_2

    .line 415
    check-cast v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->restoreAccessibilityFocus(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 416
    const/4 v3, 0x1

    goto :goto_0

    .line 412
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public abstract createMonthAdapter(Landroid/content/Context;Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;)Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;
.end method

.method public getMostVisiblePosition()I
    .locals 11

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->getFirstVisiblePosition()I

    move-result v3

    .line 349
    .local v3, "firstPosition":I
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->getHeight()I

    move-result v4

    .line 351
    .local v4, "height":I
    const/4 v6, 0x0

    .line 352
    .local v6, "maxDisplayedHeight":I
    const/4 v7, 0x0

    .line 353
    .local v7, "mostVisibleIndex":I
    const/4 v5, 0x0

    .line 354
    .local v5, "i":I
    const/4 v0, 0x0

    .line 355
    .local v0, "bottom":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 356
    invoke-virtual {p0, v5}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 357
    .local v1, "child":Landroid/view/View;
    if-nez v1, :cond_1

    .line 368
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    add-int v8, v3, v7

    return v8

    .line 360
    .restart local v1    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 361
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    sub-int v2, v8, v9

    .line 362
    .local v2, "displayedHeight":I
    if-le v2, v6, :cond_2

    .line 363
    move v7, v5

    .line 364
    move v6, v2

    .line 366
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 367
    goto :goto_0
.end method

.method public goTo(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;ZZZ)Z
    .locals 10
    .param p1, "day"    # Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;
    .param p2, "animate"    # Z
    .param p3, "setSelected"    # Z
    .param p4, "forceScroll"    # Z

    .prologue
    const/4 v9, 0x3

    .line 180
    if-eqz p3, :cond_0

    .line 181
    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mSelectedDay:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    invoke-virtual {v6, p1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->set(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)V

    .line 184
    :cond_0
    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mTempDay:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    invoke-virtual {v6, p1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->set(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)V

    .line 185
    iget v6, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    iget-object v7, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v7}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getMinDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v7

    iget v7, v7, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    sub-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0xc

    iget v7, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    iget-object v8, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    .line 186
    invoke-interface {v8}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getMinDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v8

    iget v8, v8, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    sub-int/2addr v7, v8

    add-int v3, v6, v7

    .line 188
    .local v3, "position":I
    const/4 v1, 0x0

    .line 189
    .local v1, "i":I
    const/4 v5, 0x0

    .line 192
    .local v5, "top":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_5

    .line 204
    :cond_1
    if-eqz v0, :cond_7

    .line 205
    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 210
    .local v4, "selectedPosition":I
    :goto_1
    if-eqz p3, :cond_2

    .line 211
    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mAdapter:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;

    iget-object v7, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mSelectedDay:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    invoke-virtual {v6, v7}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->setSelectedDay(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)V

    .line 214
    :cond_2
    const-string v6, "MonthFragment"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 215
    const-string v6, "MonthFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GoTo position "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_3
    if-ne v3, v4, :cond_4

    if-eqz p4, :cond_a

    .line 220
    :cond_4
    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mTempDay:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->setMonthDisplayed(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)V

    .line 221
    const/4 v6, 0x2

    iput v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mPreviousScrollState:I

    .line 222
    if-eqz p2, :cond_8

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_8

    .line 223
    const/4 v6, -0x1

    const/16 v7, 0xfa

    invoke-virtual {p0, v3, v6, v7}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->smoothScrollToPositionFromTop(III)V

    .line 225
    const/4 v6, 0x1

    .line 232
    :goto_2
    return v6

    .line 196
    .end local v4    # "selectedPosition":I
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 197
    const-string v6, "MonthFragment"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 198
    const-string v6, "MonthFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "child at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has top "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_6
    if-gez v5, :cond_1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_0

    .line 207
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "selectedPosition":I
    goto :goto_1

    .line 227
    :cond_8
    invoke-virtual {p0, v3}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->postSetSelection(I)V

    .line 232
    :cond_9
    :goto_3
    const/4 v6, 0x0

    goto :goto_2

    .line 229
    :cond_a
    if-eqz p3, :cond_9

    .line 230
    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mSelectedDay:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    invoke-virtual {p0, v6}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->setMonthDisplayed(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)V

    goto :goto_3
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mHandler:Landroid/os/Handler;

    .line 115
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->setDrawSelectorOnTop(Z)V

    .line 118
    iput-object p1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mContext:Landroid/content/Context;

    .line 119
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->setUpListView()V

    .line 120
    return-void
.end method

.method protected layoutChildren()V
    .locals 2

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->findAccessibilityFocus()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v0

    .line 427
    .local v0, "focusedDay":Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 428
    iget-boolean v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mPerformingScroll:Z

    if-eqz v1, :cond_0

    .line 429
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mPerformingScroll:Z

    .line 433
    :goto_0
    return-void

    .line 431
    :cond_0
    invoke-direct {p0, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->restoreAccessibilityFocus(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)Z

    goto :goto_0
.end method

.method public onChange()V
    .locals 0

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->refreshAdapter()V

    .line 124
    return-void
.end method

.method public onDateChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 373
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getSelectedDay()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->goTo(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;ZZZ)Z

    .line 374
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 437
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 438
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 439
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 457
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 458
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 459
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 460
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 253
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    .line 254
    .local v0, "child":Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;
    if-nez v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->getHeight()I

    move-result v4

    mul-int/2addr v1, v4

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->getBottom()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-long v2, v1

    .line 260
    .local v2, "currScroll":J
    iput-wide v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mPreviousScrollPosition:J

    .line 261
    iget v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mCurrentScrollState:I

    iput v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mPreviousScrollState:I

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mScrollStateChangedRunnable:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    .line 278
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 12
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v11, 0x2000

    const/16 v10, 0x1000

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 468
    if-eq p1, v10, :cond_0

    if-eq p1, v11, :cond_0

    .line 470
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v5

    .line 505
    :goto_0
    return v5

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->getFirstVisiblePosition()I

    move-result v1

    .line 475
    .local v1, "firstVisiblePosition":I
    rem-int/lit8 v3, v1, 0xc

    .line 476
    .local v3, "month":I
    div-int/lit8 v6, v1, 0xc

    iget-object v7, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v7}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getMinDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v7

    iget v7, v7, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    add-int v4, v6, v7

    .line 477
    .local v4, "year":I
    new-instance v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    invoke-direct {v0, v4, v3, v5}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;-><init>(III)V

    .line 480
    .local v0, "day":Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;
    if-ne p1, v10, :cond_2

    .line 481
    iget v6, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    .line 482
    iget v6, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    const/16 v7, 0xc

    if-ne v6, v7, :cond_1

    .line 483
    iput v8, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    .line 484
    iget v6, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    .line 502
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->getMonthAndYearString(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/codetroopers/betterpickers/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 503
    invoke-virtual {p0, v0, v5, v8, v5}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->goTo(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;ZZZ)Z

    .line 504
    iput-boolean v5, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mPerformingScroll:Z

    goto :goto_0

    .line 486
    :cond_2
    if-ne p1, v11, :cond_1

    .line 487
    invoke-virtual {p0, v8}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 490
    .local v2, "firstVisibleView":Landroid/view/View;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    if-lt v6, v9, :cond_1

    .line 493
    iget v6, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    .line 494
    iget v6, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    if-ne v6, v9, :cond_1

    .line 495
    const/16 v6, 0xb

    iput v6, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    .line 496
    iget v6, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    goto :goto_1
.end method

.method public postSetSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->clearFocus()V

    .line 237
    new-instance v0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$1;

    invoke-direct {v0, p0, p1}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView$1;-><init>(Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;I)V

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->post(Ljava/lang/Runnable;)Z

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 245
    return-void
.end method

.method protected refreshAdapter()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mAdapter:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-virtual {p0, v0, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->createMonthAdapter(Landroid/content/Context;Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;)Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mAdapter:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mAdapter:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mAdapter:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mSelectedDay:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->setSelectedDay(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)V

    goto :goto_0
.end method

.method public setController(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;)V
    .locals 1
    .param p1, "controller"    # Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    .line 108
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v0, p0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->registerOnDateChangedListener(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateChangedListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->refreshAdapter()V

    .line 110
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->onDateChanged()V

    .line 111
    return-void
.end method

.method protected setMonthDisplayed(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)V
    .locals 1
    .param p1, "date"    # Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    .prologue
    .line 269
    iget v0, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mCurrentMonthDisplayed:I

    .line 270
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->invalidateViews()V

    .line 271
    return-void
.end method

.method public setTheme(Landroid/content/res/TypedArray;)V
    .locals 1
    .param p1, "themeColors"    # Landroid/content/res/TypedArray;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mAdapter:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mAdapter:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;

    invoke-virtual {v0, p1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->setTheme(Landroid/content/res/TypedArray;)V

    .line 286
    :cond_0
    return-void
.end method

.method protected setUpListView()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->setCacheColorHint(I)V

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->setItemsCanFocus(Z)V

    .line 156
    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->setFastScrollEnabled(Z)V

    .line 157
    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->setVerticalScrollBarEnabled(Z)V

    .line 158
    invoke-virtual {p0, p0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 159
    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->setFadingEdgeLength(I)V

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 162
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iget v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->mFriction:F

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->setFriction(F)V

    .line 164
    :cond_0
    return-void
.end method
